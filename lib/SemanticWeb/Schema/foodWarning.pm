use utf8;

package SemanticWeb::Schema::foodWarning;

# ABSTRACT: Any precaution

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'foodWarning';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any precaution, guidance, contraindication, etc. related to consumption of
specific foods while taking this drug.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
