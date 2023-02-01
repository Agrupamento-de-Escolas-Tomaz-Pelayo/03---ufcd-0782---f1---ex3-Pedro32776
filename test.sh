echo "A executar os testes ..."
echo

output=$(./a.out)
expected_output_1="Ola Mundo!"
expected_output_2="Estou a aprender C."

output_line_1=$(echo "$program_output" | head -n 1)
output_line_2=$(echo "$program_output" | head -n 2 | tail -n 1)

if [ "$output_line_1" == "$expected_output_1" ] && [ "$output_line_2" == "$expected_output_2" ] ] ; then
  echo "Aprovado: A saída é correcta"
  echo "::set-env name=TEST_RESULT::Aprovado"
else
  echo "Esperada a saída '$expected_output_1' mas o programa devolveu: $output_line_1"
  echo "Esperada a saída '$expected_output_2' mas o programa devolveu: $output_line_2"
  echo "::set-env name=TEST_RESULT::Falha"
  exit 1
fi

echo
echo "Todos os testes terminados com sucesso."

exit 0
