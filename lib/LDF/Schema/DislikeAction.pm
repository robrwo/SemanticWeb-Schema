package LDF::Schema::DislikeAction;

# ABSTRACT: The act of expressing a negative sentiment about the object

use Moo;

extends qw/ LDF::Schema::ReactAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of expressing a negative sentiment about the object. An agent
dislikes an object (a proposition, topic or theme) with participants.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DislikeAction' }



=head1 SEE ALSO



L<LDF::Schema::ReactAction>

=cut

1;
