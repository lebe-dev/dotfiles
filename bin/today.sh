#!/bin/bash

# Добавляет задачи с $TASK_CONTEXT и приоритетом A (Сегодня) 

if [ $# -eq 0 ]; then
    todo.sh lsp A ${TASK_CONTEXT}
    exit 0
fi

TASK_ID=`todo.sh a ${TASK_CONTEXT} $@ | head -1 | cut -d " " -f 1`
echo "task id: ${TASK_ID}"

todo.sh pri ${TASK_ID} A

