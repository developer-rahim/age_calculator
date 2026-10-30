# age_calculator

A focused age calculator with date handling and internationalised formatting.

## Highlights

- Pick any date and get the age calculated instantly.
- Date maths isolated in `Model` and shared through `globalVariale`.
- Formatting via `intl` so output follows the user's locale.

## Tech Stack

| Concern | Choice |
|---|---|
| UI | Flutter, Material |
| Date formatting | `intl` |
| Assets | Custom bundled fonts |

## Project Structure

```
lib/
- `Age_calculator`
- `HomeScreen`
- `Model`
- `globalVariale`
```

## Getting Started

### Prerequisites

- Flutter `>= 3.16` (Dart `>= 3.2`)

### Run

```bash
git clone https://github.com/developer-rahim/age_calculator.git
cd age_calculator
flutter pub get
flutter run
```

### Test

```bash
flutter test
flutter analyze
```

## Notes

Uses a bundled font in `fonts/` for a consistent typographic look.

## License

Released under the MIT License.
