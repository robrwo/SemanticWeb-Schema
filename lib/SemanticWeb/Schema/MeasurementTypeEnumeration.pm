use utf8;

package SemanticWeb::Schema::MeasurementTypeEnumeration;

# ABSTRACT: Enumeration of common measurement types (or dimensions)

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MeasurementTypeEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

Enumeration of common measurement types (or dimensions), for example
"chest" for a person, "inseam" for pants, "gauge" for screws, or "wheel"
for bicycles.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
