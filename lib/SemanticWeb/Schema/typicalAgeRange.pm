use utf8;

package SemanticWeb::Schema::typicalAgeRange;

# ABSTRACT: The typical expected age range, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'typicalAgeRange';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The typical expected age range, e.g. '7-9', '11-'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
