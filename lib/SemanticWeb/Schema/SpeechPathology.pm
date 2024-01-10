use utf8;

package SemanticWeb::Schema::SpeechPathology;

# ABSTRACT: The scientific study and treatment of defects

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SpeechPathology';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The scientific study and treatment of defects, disorders, and malfunctions
of speech and voice, as stuttering, lisping, or lalling, and of language
disturbances, as aphasia or delayed language acquisition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
