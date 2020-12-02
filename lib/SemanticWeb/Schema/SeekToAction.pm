use utf8;

package SemanticWeb::Schema::SeekToAction;

# ABSTRACT: This is the [[Action]] of navigating to a specific [[startOffset]] timestamp within a [[VideoObject]]

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'SeekToAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

This is the [[Action]] of navigating to a specific [[startOffset]]
timestamp within a [[VideoObject]], typically represented with a URL
template structure.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
