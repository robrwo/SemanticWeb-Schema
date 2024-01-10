use utf8;

package SemanticWeb::Schema::aspect;

# ABSTRACT: An aspect of medical practice that is considered on the page

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'aspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An aspect of medical practice that is considered on the page, such as
'diagnosis', 'treatment', 'causes', 'prognosis', 'etiology',
'epidemiology', etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
