use utf8;

package SemanticWeb::Schema::HowToTip;

# ABSTRACT: An explanation in the instructions for how to achieve a result

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::ListItem /;


use MooX::JSON_LD 'HowToTip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

An explanation in the instructions for how to achieve a result. It provides
supplementary information about a technique, supply, author's preference,
etc. It can explain what could be done, or what should not be done, but
doesn't specify what should be done (see HowToDirection).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ListItem>

=cut

1;
