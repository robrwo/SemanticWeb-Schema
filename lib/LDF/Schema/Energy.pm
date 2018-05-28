package LDF::Schema::Energy;

# ABSTRACT: Properties that take Energy as values are of the form '&lt;Number&gt; &lt;Energy unit of measure&gt;'.

use Moo;

extends qw/ LDF::Schema::Quantity /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Properties that take Energy as values are of the form '&lt;Number&gt;
&lt;Energy unit of measure&gt;'.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Energy' }



=head1 SEE ALSO



L<LDF::Schema::Quantity>

=cut

1;
