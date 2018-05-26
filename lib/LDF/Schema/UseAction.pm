package LDF::Schema::UseAction;

# ABSTRACT: The act of applying an object to its intended purpose.

use Moo;

extends qw/ LDF::Schema::ConsumeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of applying an object to its intended purpose.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'UseAction' }



=head1 SEE ALSO



L<LDF::Schema::ConsumeAction>

=cut

1;
