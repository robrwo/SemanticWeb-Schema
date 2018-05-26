package LDF::Schema::Conversation;

# ABSTRACT: One or more messages between organizations or people on a particular topic

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

One or more messages between organizations or people on a particular topic.
Individual messages can be linked to the conversation with isPartOf or
hasPart properties.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Conversation' }



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
