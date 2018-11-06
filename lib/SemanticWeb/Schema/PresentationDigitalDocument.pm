use utf8;

package SemanticWeb::Schema::PresentationDigitalDocument;

# ABSTRACT: A file containing slides or used for a presentation.

use Moo;

extends qw/ SemanticWeb::Schema::DigitalDocument /;


use MooX::JSON_LD 'PresentationDigitalDocument';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

=encoding utf8

=head1 DESCRIPTION

A file containing slides or used for a presentation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DigitalDocument>

=cut

1;
