use utf8;

package SemanticWeb::Schema::geoRadius;

# ABSTRACT: Indicates the approximate radius of a GeoCircle (metres unless indicated otherwise via Distance notation).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'geoRadius';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the approximate radius of a GeoCircle (metres unless indicated
otherwise via Distance notation).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
