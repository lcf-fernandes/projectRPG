# Project RPG — Godot 4

Projeto base criado com **Godot 4.4** (GDScript, `gl_compatibility`).

## Requisitos

- [Godot Engine 4.4+](https://godotengine.org/download) (Standard edition)
- Nenhuma dependência externa

## Como abrir

1. Abra o **Godot 4.4**.
2. Na tela de projetos, clique em **Importar**.
3. Selecione a pasta `Project RPG` (onde está o arquivo `project.godot`).
4. Clique em **Importar & Editar**.

## Como executar

- Pressione **F5** (ou clique em ▶ no topo) — a cena `scenes/main.tscn` já está configurada como cena principal (`run/main_scene` em `project.godot`).
- Alternativamente, abra `scenes/main.tscn` e clique em **Executar Cena Atual (F6)**.

### O que a cena faz

- Exibe título, subtítulo e um botão centralizado.
- Clique no botão para contar interações (com animação de escala).
- Use **setas / WASD / analógico** para testar o Input Map (`move_left`, `move_right`, `move_up`, `move_down`).

## Estrutura de pastas

```
Project RPG/
├── project.godot          # Configuração do projeto (Godot 4, config_version=5)
├── icon.svg               # Ícone do projeto
├── default_env.tres       # Ambiente padrão (fundo sólido)
├── scenes/
│   └── main.tscn          # Cena principal executável
├── scripts/
│   └── main.gd            # Script da cena principal
├── assets/
│   ├── sprites/           # Sprites e texturas (vazio, pronto para uso)
│   ├── audio/             # Sons e músicas (vazio, pronto para uso)
│   └── fonts/
│       └── theme_font.tres
├── ui/                    # Cenas e recursos de interface
└── README.md
```

## Input Map

Definido em `project.godot`:

| Ação       | Teclas / Controle              |
|------------|-------------------------------|
| `move_left`  | ← / A / analógico esquerdo   |
| `move_right` | → / D / analógico            |
| `move_up`    | ↑ / W / analógico            |
| `move_down`  | ↓ / S / analógico            |
| `ui_accept`  | Enter / Espaço / botão A     |

## Próximos passos sugeridos

- Criar cenas de personagem (`scenes/player.tscn`) com `CharacterBody2D`.
- Adicionar TileMap para cenários.
- Implementar sistema de inventário/diálogo em `ui/`.
