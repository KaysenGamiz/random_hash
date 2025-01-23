import hashlib
import random
import string

def generate_hash():
    return ''.join(random.choices(string.ascii_letters + string.digits, k=32))

def find_hash_with_two_zeros():
    for _ in range(1000):
        random_string = generate_hash()
        hash_result = hashlib.md5(random_string.encode()).hexdigest()
        if hash_result.startswith('00'):
            print(f'Hash found: {hash_result}')
            return True
    print('No hash starting with two consecutive zeros found.')
    return False

if find_hash_with_two_zeros():
    print('Test passed.')
else:
    print('Test failed.')
