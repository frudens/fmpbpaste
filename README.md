# fmpbpaste

## ダウンロードと準備

1. [Releases](https://github.com/frudens/fmpbpaste/releases) ページからコマンドの実行ファイル [Products.zip](https://github.com/frudens/fmpbpaste/releases/download/v0.1/Products.zip) をダウンロードする。

2. ダウンロードした `Products.zip` を解凍し `fmpbpaste` を一度右クリックで開いてください。

3. `“fmpbpaste”の開発元を検証できません。開いてもよろしいですか?` とダイアログが表示されます。

4. `開く` を選択すると、ターミナルが起動し、すぐに終了します。

5. これで準備は完了です。

6. 分かる人は、ご自身で管理しているパスにバイナリを移動してください。

## 使い方

1. FileMakerの要素をコピーする。

   - FileMakerを開き、テーブル、フィールド、スクリプト、スクリプトステップ、カスタム関数のいずれかをコピーする。

2. ターミナルを起動し `fmpbpaste` を実行する。

3. 以下のように、出力されます。

```bash
(cmd) teruhiro@MacBook-Pro-13:~ $ Downloads/Products/usr/local/bin/fmpbpaste
<fmxmlsnippet type="FMObjectList"><Field id="1" dataType="Text" fieldType="Normal" name="名前"><Comment></Comment><AutoEnter allowEditing="True" constant="False" furigana="False" lookup="False" calculation="False"><ConstantData></ConstantData></AutoEnter><Validation message="False" maxLength="False" valuelist="False" calculation="False" alwaysValidateCalculation="False" type="OnlyDuringDataEntry"><NotEmpty value="False"></NotEmpty><Unique value="False"></Unique><Existing value="False"></Existing><StrictValidation value="False"></StrictValidation></Validation><Storage autoIndex="True" index="None" indexLanguage="Japanese" global="False" maxRepetition="1"></Storage><DefaultStyle></DefaultStyle></Field></fmxmlsnippet>
```

4. ご自由にどうぞ。

## 色々な使い方

1. クリップボードの内容がFileMakerとは関係ない場合の表示

```bash
(cmd) teruhiro@MacBook-Pro-13:~ $ Downloads/Products/usr/local/bin/fmpbpaste
The Clipboard is not set with FileMaker XML.
```

2. XMLをフォーマットする。

```bash
(ins) teruhiro@MacBook-Pro-13:~ $ Downloads/Products/usr/local/bin/fmpbpaste | xmllint --format --encode utf8 -
<?xml version="1.0" encoding="utf8"?>
<fmxmlsnippet type="FMObjectList">
  <Field id="1" dataType="Text" fieldType="Normal" name="名前">
    <Comment/>
    <AutoEnter allowEditing="True" constant="False" furigana="False" lookup="False" calculation="False">
      <ConstantData/>
    </AutoEnter>
    <Validation message="False" maxLength="False" valuelist="False" calculation="False" alwaysValidateCalculation="False" type="OnlyDuringDataEntry">
      <NotEmpty value="False"/>
      <Unique value="False"/>
      <Existing value="False"/>
      <StrictValidation value="False"/>
    </Validation>
    <Storage autoIndex="True" index="None" indexLanguage="Japanese" global="False" maxRepetition="1"/>
    <DefaultStyle/>
  </Field>
</fmxmlsnippet>
```

3. ファイルに出力する。

```bash
(cmd) teruhiro@MacBook-Pro-13:~ $ Downloads/Products/usr/local/bin/fmpbpaste | xmllint --format --encode utf8 - > field.xml
(ins) teruhiro@MacBook-Pro-13:~ $ cat field.xml
<?xml version="1.0" encoding="utf8"?>
<fmxmlsnippet type="FMObjectList">
  <Field id="1" dataType="Text" fieldType="Normal" name="名前">
    <Comment/>
    <AutoEnter allowEditing="True" constant="False" furigana="False" lookup="False" calculation="False">
      <ConstantData/>
    </AutoEnter>
    <Validation message="False" maxLength="False" valuelist="False" calculation="False" alwaysValidateCalculation="False" type="OnlyDuringDataEntry">
      <NotEmpty value="False"/>
      <Unique value="False"/>
      <Existing value="False"/>
      <StrictValidation value="False"/>
    </Validation>
    <Storage autoIndex="True" index="None" indexLanguage="Japanese" global="False" maxRepetition="1"/>
    <DefaultStyle/>
  </Field>
</fmxmlsnippet>
```

4. Vimで開く。

```bash
(cmd) teruhiro@MacBook-Pro-13:~ $ Downloads/Products/usr/local/bin/fmpbpaste | xmllint --format --encode utf8 - | vim -
```

