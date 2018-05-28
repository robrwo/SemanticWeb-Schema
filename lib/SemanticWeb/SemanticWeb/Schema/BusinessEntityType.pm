package SemanticWeb::Schema::BusinessEntityType;

# ABSTRACT: <p>A business entity type is a conceptual entity representing the legal form

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>A business entity type is a conceptual entity representing the legal
form, the size, the main line of business, the position in the value chain,
or any combination thereof, of an organization or business person.</p>
<p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#Business</li>
<li>http://purl.org/goodrelations/v1#Enduser</li>
<li>http://purl.org/goodrelations/v1#PublicInstitution</li>
<li>http://purl.org/goodrelations/v1#Reseller</li> </ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BusinessEntityType' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
