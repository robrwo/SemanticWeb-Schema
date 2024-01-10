use utf8;

package SemanticWeb::Schema::proprietaryName;

# ABSTRACT: Proprietary name given to the diet plan

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'proprietaryName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Proprietary name given to the diet plan, typically by its originator or
creator.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
