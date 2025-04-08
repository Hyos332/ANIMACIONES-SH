spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

# Simular una tarea larga
long_task() {
    sleep 5
}

# Se ejecuta en segundo plano 
long_task &
task_pid=$!

# Mistrar e spiner mientras la tarea se ejecuta
spinner $task_pid

echo "Tarea Realizada"