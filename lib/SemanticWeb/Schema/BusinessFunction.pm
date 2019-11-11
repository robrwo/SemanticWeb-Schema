use utf8;

package SemanticWeb::Schema::BusinessFunction;

# ABSTRACT: The business function specifies the type of activity or access (i

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'BusinessFunction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The business function specifies the type of activity or access (i.e.,
the bundle of rights) offered by the organization or business person
through the offer. Typical are sell, rental or lease, maintenance or
repair, manufacture / produce, recycle / dispose, engineering /
construction, or installation. Proprietary specifications of access rights
are also instances of this class.<br/><br/> Commonly used values:<br/><br/>
<ul> <li>http://purl.org/goodrelations/v1#ConstructionInstallation</li>
<li>http://purl.org/goodrelations/v1#Dispose</li>
<li>http://purl.org/goodrelations/v1#LeaseOut</li>
<li>http://purl.org/goodrelations/v1#Maintain</li>
<li>http://purl.org/goodrelations/v1#ProvideService</li>
<li>http://purl.org/goodrelations/v1#Repair</li>
<li>http://purl.org/goodrelations/v1#Sell</li>
<li>http://purl.org/goodrelations/v1#Buy</li> </ul> <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
