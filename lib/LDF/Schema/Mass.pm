package LDF::Schema::Mass;

# ABSTRACT: Properties that take Mass as values are of the form '&lt;Number&gt; &lt;Mass unit of measure&gt;'

use Moo;

extends qw/ LDF::Schema::Quantity /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Properties that take Mass as values are of the form '&lt;Number&gt;
&lt;Mass unit of measure&gt;'. E.g., '7 kg'.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Mass' }



=head1 SEE ALSO



L<LDF::Schema::Quantity>

=cut

1;
