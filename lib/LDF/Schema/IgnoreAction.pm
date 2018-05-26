package LDF::Schema::IgnoreAction;

# ABSTRACT: The act of intentionally disregarding the object

use Moo;

extends qw/ LDF::Schema::AssessAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of intentionally disregarding the object. An agent ignores an
object.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'IgnoreAction' }



=head1 SEE ALSO



L<LDF::Schema::AssessAction>

=cut

1;
