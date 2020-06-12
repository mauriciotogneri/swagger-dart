class Parameters {
  final Type headers;
  final Type path;
  final Type query;
  final Type form;
  final Type data;

  Parameters({
    this.headers,
    this.path,
    this.query,
    this.form,
    this.data,
  });

  // TODO(momo): implement
  String getPath(String base) {
    return base;
  }

  // TODO(momo): implement
  Map<String, String> getHeaders() {
    return {};
  }

  // TODO(momo): implement
  dynamic getBody() {
    return {};
  }
}
