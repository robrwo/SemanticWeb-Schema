package LDF::Schema::StructuredValue;

# ABSTRACT: Structured values are used when the value of a property has a more complex structure than simply being a textual value or a reference to another thing.

use Moo;

extends qw/ LDF::Schema::Intangible /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Structured values are used when the value of a property has a more complex
structure than simply being a textual value or a reference to another
thing.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'StructuredValue' }



=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
