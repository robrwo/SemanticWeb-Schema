use utf8;

package SemanticWeb::Schema::amenityFeature;

# ABSTRACT: An amenity feature (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'amenityFeature';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An amenity feature (e.g. a characteristic or service) of the Accommodation.
This generic property does not make a statement about whether the feature
is included in an offer for the main accommodation or available at extra
costs.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
