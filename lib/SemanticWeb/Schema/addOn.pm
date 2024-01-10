use utf8;

package SemanticWeb::Schema::addOn;

# ABSTRACT: An additional offer that can only be obtained in combination with the first base offer (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'addOn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An additional offer that can only be obtained in combination with the first
base offer (e.g. supplements and extensions that are available for a
surcharge).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
