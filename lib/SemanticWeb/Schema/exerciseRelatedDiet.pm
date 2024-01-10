use utf8;

package SemanticWeb::Schema::exerciseRelatedDiet;

# ABSTRACT: A sub property of instrument

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'exerciseRelatedDiet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A sub property of instrument. The diet used in this action.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
