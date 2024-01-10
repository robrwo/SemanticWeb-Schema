use utf8;

package SemanticWeb::Schema::stageAsNumber;

# ABSTRACT: The stage represented as a number, e.g. 3.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'stageAsNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The stage represented as a number, e.g. 3.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
