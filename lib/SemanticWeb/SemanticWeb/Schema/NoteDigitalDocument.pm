package SemanticWeb::Schema::NoteDigitalDocument;

# ABSTRACT: A file containing a note

use Moo;

extends qw/ SemanticWeb::Schema::DigitalDocument /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A file containing a note, primarily for the author.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'NoteDigitalDocument' }



=head1 SEE ALSO



L<SemanticWeb::Schema::DigitalDocument>

=cut

1;
