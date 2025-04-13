# Libft - Biblioteca Pessoal em C

Libft é um projeto desenvolvido como parte da jornada na 42 Lisboa. O objetivo é criar uma biblioteca pessoal em C, contendo funções essenciais que replicam ou complementam as funções padrão da linguagem. Essa biblioteca serve como base para projetos futuros, promovendo o aprendizado e a prática de conceitos fundamentais de programação em C.

## 📚 Sobre o Projeto

Libft é uma biblioteca modular que implementa funções úteis para manipulação de strings, memória, listas encadeadas e outras operações comuns. O projeto é dividido em três partes principais:

1. **Funções da Biblioteca Padrão**: Reimplementação de funções clássicas da biblioteca padrão do C, como `strlen`, `strchr`, `memset`, entre outras.
2. **Funções Adicionais**: Novas funções que complementam as funcionalidades padrão, como `ft_strjoin`, `ft_split`, `ft_itoa`, etc.
3. **Funções de Listas Encadeadas**: Implementação de funções para manipulação de listas encadeadas, como `ft_lstnew`, `ft_lstadd_back`, `ft_lstmap`, entre outras.

## 🏆 Nota do Projeto

![Nota do Projeto](https://github.com/user-attachments/assets/14a444f4-6454-49ae-9713-fd571eb3c417)

## 🚀 Funcionalidades

### 🔤 Manipulação de Strings
- `ft_strlen`: Calcula o comprimento de uma string.
- `ft_strchr`: Localiza a primeira ocorrência de um caractere em uma string.
- `ft_strjoin`: Concatena duas strings em uma nova string.
- `ft_split`: Divide uma string em substrings com base em um delimitador.
- `ft_strncmp`: Compara duas strings até um número específico de caracteres.
- `ft_strdup`: Duplica uma string, alocando memória para a nova cópia.

### 🧠 Manipulação de Memória
- `ft_memset`: Preenche uma área de memória com um valor específico.
- `ft_memcpy`: Copia uma área de memória para outra.
- `ft_memmove`: Move uma área de memória para outra, lidando com sobreposição.
- `ft_calloc`: Aloca memória inicializada com zeros.
- `ft_bzero`: Zera uma área de memória.

### 🔢 Conversões
- `ft_atoi`: Converte uma string para um número inteiro.
- `ft_itoa`: Converte um número inteiro para uma string.
- `ft_tolower`: Converte um caractere para minúsculo.
- `ft_toupper`: Converte um caractere para maiúsculo.

### 🧩 Listas Encadeadas
- `ft_lstnew`: Cria um novo nó de lista.
- `ft_lstadd_back`: Adiciona um nó ao final da lista.
- `ft_lstadd_front`: Adiciona um nó ao início da lista.
- `ft_lstsize`: Retorna o tamanho da lista.
- `ft_lstlast`: Retorna o último nó da lista.
- `ft_lstdelone`: Libera a memória de um nó da lista.
- `ft_lstclear`: Libera a memória de toda a lista.
- `ft_lstiter`: Aplica uma função a cada elemento da lista.
- `ft_lstmap`: Aplica uma função a cada elemento da lista, criando uma nova lista.

## 🖥️ Ambiente de Testes

O código foi testado em ambiente Linux, utilizando processadores baseados na arquitetura Intel. Caso utilize outro ambiente ou arquitetura, recomenda-se realizar testes adicionais para garantir a compatibilidade.


## ✅ Testes

O projeto inclui comandos no `Makefile` para facilitar a execução de testes. Certifique-se de que o arquivo src/main_libft.c contém os testes necessários para validar as funções da biblioteca. Caso precise adicionar novos testes, edite esse arquivo e recompile. Siga os passos abaixo para testar a biblioteca:

1. **Clonar o repositório**

- Clone o repositório para sua máquina local: git clone https://github.com/thiagleal/libft

2. **Adicionar a main de teste**  

- Certifique-se de incluir um arquivo chamado `main_libft.c` dentro da pasta `src`. Esse arquivo deve conter os testes necessários para validar as funções da biblioteca e deve incluir `#include "libft.h"`.

3. **Criar o binário de teste** 

- Use o comando abaixo para compilar a biblioteca e criar o binário de teste: `make test`.

4. **Executar o teste** 

- Após a criação do binário, execute o teste com: `./test_libft`

5. **Remover os arquivos de teste** 

- Para limpar os arquivos gerados pelos testes, use: `make fcleantest`

## 📝 Contribuição

Sinta-se à vontade para contribuir com melhorias ou novas funcionalidades para a biblioteca. Abra uma issue ou envie um pull request!
