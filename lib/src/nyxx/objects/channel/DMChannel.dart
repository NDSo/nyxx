part of nyxx;

/// Represents channel with user.
class DMChannel extends MessageChannel {
  /// The recipient.
  User recipient;

  DMChannel._new(Client client, Map<String, dynamic> data)
      : super._new(client, data, "private") {

    if (raw['recipients'] != null) {
      this.recipient =
          new User._new(client, raw['recipients'][0] as Map<String, dynamic>);
    } else {
      this.recipient =
          new User._new(client, raw['recipient'] as Map<String, dynamic>);
    }
  }
}
