package LDF::Schema::HomeAndConstructionBusiness;

# ABSTRACT: A construction business

use Moo;

extends qw/ LDF::Schema::LocalBusiness /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A construction business.</p> <p>A HomeAndConstructionBusiness is a <a
class="localLink" href="http://schema.org/LocalBusiness">LocalBusiness</a>
that provides services around homes and buildings.</p> <p>As a <a
class="localLink" href="http://schema.org/LocalBusiness">LocalBusiness</a>
it can be described as a <a class="localLink"
href="http://schema.org/provider">provider</a> of one or more <a
class="localLink" href="http://schema.org/Service">Service</a>(s).

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HomeAndConstructionBusiness' }



=head1 SEE ALSO



L<LDF::Schema::LocalBusiness>

=cut

1;
