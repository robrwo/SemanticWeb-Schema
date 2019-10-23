use utf8;

package SemanticWeb::Schema::HomeAndConstructionBusiness;

# ABSTRACT: A construction business

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness SemanticWeb::Schema::Room /;


use MooX::JSON_LD 'ARRAY(0x563e6f04a158)';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A construction business.<br/><br/> A HomeAndConstructionBusiness is a <a
class="localLink" href="http://schema.org/LocalBusiness">LocalBusiness</a>
that provides services around homes and buildings.<br/><br/> As a <a
class="localLink" href="http://schema.org/LocalBusiness">LocalBusiness</a>
it can be described as a <a class="localLink"
href="http://schema.org/provider">provider</a> of one or more <a
class="localLink"
href="http://schema.org/Service">Service</a>(s).]]></rdfs:comment>
</rdfs:Class> <rdfs:Class rdf:about="http://schema.org/HotelRoom">
<dct:source
rdf:resource="https://www.w3.org/wiki/WebSchemas/SchemaDotOrgSources#STI_Ac
commodation_Ontology"/> <rdfs:comment><![CDATA[A hotel room is a single
room in a hotel. <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Room>

=cut

1;
