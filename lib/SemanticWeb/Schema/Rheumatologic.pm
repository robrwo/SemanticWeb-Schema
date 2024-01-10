use utf8;

package SemanticWeb::Schema::Rheumatologic;

# ABSTRACT: A specific branch of medical science that deals with the study and treatment of rheumatic

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Rheumatologic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that deals with the study and
treatment of rheumatic, autoimmune or joint diseases.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
