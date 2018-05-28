package SemanticWeb::Schema::ReactAction;

# ABSTRACT: The act of responding instinctively and emotionally to an object

use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of responding instinctively and emotionally to an object,
expressing a sentiment.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ReactAction' }



=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
