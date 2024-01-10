use utf8;

package SemanticWeb::Schema::Urologic;

# ABSTRACT: A specific branch of medical science that is concerned with the diagnosis and treatment of diseases pertaining to the urinary tract and the urogenital system.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Urologic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that is concerned with the diagnosis
and treatment of diseases pertaining to the urinary tract and the
urogenital system.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
