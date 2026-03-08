class Solution:
    def tictactoe(self, moves: List[List[int]]) -> str:
        board = [[''] * 3 for _ in range(3)]
        for turn in range(len(moves)):
            player = 'A' if turn % 2 == 0 else 'B'

            move = moves[turn]
            board[move[0]][move[1]] = player

        if board[1][1] != '' and board[1][1] == board[0][0] and board[1][1] == board[2][2]:
            return board[1][1]

        if board[1][1] != '' and board[1][1] == board[0][2] and board[1][1] == board[2][0]:
            return board[1][1]

        column = board[0]
        for i in range(3):
            if board[i][0] != '' and len(set(board[i])) == 1:
                return board[i][0]

            for j in range(3):
                if column[j] != board[i][j]:
                    column[j] = ''

        result = next((c for c in column if c != ''), None)
        if result != None:
            return result

        return 'Draw' if len(moves) == 9 else 'Pending'
