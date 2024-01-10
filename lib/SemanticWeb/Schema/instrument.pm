use utf8;

package SemanticWeb::Schema::instrument;

# ABSTRACT: The object that helped the agent perform the action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'instrument';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The object that helped the agent perform the action. E.g. John wrote a book
with *a pen*.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
