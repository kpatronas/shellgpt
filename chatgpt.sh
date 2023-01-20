#!/bin/bash
source ~/.chatgpt/chatgpt

#MODEL="text-davinci-003"
#TEMPERATURE="0"
#MAX_TOKEN=4000
#BEARER=""

while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -m|--model)
      MODEL="$2"
      shift
      shift
      ;;
    -t|--temperature)
      TEMPERATURE="$2"
      shift
      shift
      ;;
    -m|--max-tokens)
      MAX_TOKEN="$2"
      shift
      shift
      ;;
    -b|--bearer)
      BEARER="$2"
      shift
      shift
      ;;
    -p|--prompt)
      PROMPT="$2"
      shift
      shift
      ;;
  esac
done

if [ -z "$PROMPT" ]
then
      echo "prompt cannot be null"
      exit 1
fi

if [ -z "$TEMPERATURE" ]
then
      echo "temperature cannot be null"
      exit 1
fi

if [ -z "$MAX_TOKEN" ]
then
      echo "max-token cannot be null"
      exit 1
fi

if [ -z "$MODEL" ]
then
      echo "model cannot be null"
      exit 1
fi

if [ -z "$BEARER" ]
then
      echo "bearer cannot be null"
      exit 1
fi

curl=`cat <<EOS
curl https://api.openai.com/v1/completions \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer $BEARER" \
  -d '{
  "model": "$MODEL",
  "prompt": "$PROMPT",
  "max_tokens": $MAX_TOKEN,
  "temperature": $TEMPERATURE

}' \
--insecure 2>/tmp/chatgpt_err | jq '.choices[]'.text | cut -c 6-
EOS`

result=`eval ${curl}`
exit_code=$?

if [ $exit_code -ne 0 ]; then
    cat /tmp/chatgpt_err
    exit $exit_code
else
    printf ${result}"\n" | sed '$ s/.$//'
fi
exit 0
