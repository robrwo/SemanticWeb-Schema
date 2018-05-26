package LDF::Schema::BusinessFunction;

# ABSTRACT: <p>The business function specifies the type of activity or access (i

use Moo;

extends qw/ LDF::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The business function specifies the type of activity or access (i.e.,
the bundle of rights) offered by the organization or business person
through the offer. Typical are sell, rental or lease, maintenance or
repair, manufacture / produce, recycle / dispose, engineering /
construction, or installation. Proprietary specifications of access rights
are also instances of this class.</p> <p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#ConstructionInstallation</li>
<li>http://purl.org/goodrelations/v1#Dispose</li>
<li>http://purl.org/goodrelations/v1#LeaseOut</li>
<li>http://purl.org/goodrelations/v1#Maintain</li>
<li>http://purl.org/goodrelations/v1#ProvideService</li>
<li>http://purl.org/goodrelations/v1#Repair</li>
<li>http://purl.org/goodrelations/v1#Sell</li>
<li>http://purl.org/goodrelations/v1#Buy</li> </ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BusinessFunction' }



=head1 SEE ALSO



L<LDF::Schema::Enumeration>

=cut

1;
