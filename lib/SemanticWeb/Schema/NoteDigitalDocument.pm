use utf8;

package SemanticWeb::Schema::NoteDigitalDocument;

# ABSTRACT: A file containing a note

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::DigitalDocument /;


use MooX::JSON_LD 'NoteDigitalDocument';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A file containing a note, primarily for the author.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DigitalDocument>

=cut

1;
