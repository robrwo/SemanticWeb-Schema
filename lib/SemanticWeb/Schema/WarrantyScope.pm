package SemanticWeb::Schema::WarrantyScope;

# ABSTRACT: <p>A range of of services that will be provided to a customer free of charge in case of a defect or malfunction of a product

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'WarrantyScope';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

<p>A range of of services that will be provided to a customer free of
charge in case of a defect or malfunction of a product.</p> <p>Commonly
used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#Labor-BringIn</li>
<li>http://purl.org/goodrelations/v1#PartsAndLabor-BringIn</li>
<li>http://purl.org/goodrelations/v1#PartsAndLabor-PickUp</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;