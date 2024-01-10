use utf8;

package SemanticWeb::Schema::Cardiovascular;

# ABSTRACT: A specific branch of medical science that pertains to diagnosis and treatment of disorders of heart and vasculature.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Cardiovascular';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that pertains to diagnosis and
treatment of disorders of heart and vasculature.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
