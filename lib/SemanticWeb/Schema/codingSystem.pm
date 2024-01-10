use utf8;

package SemanticWeb::Schema::codingSystem;

# ABSTRACT: The coding system, e.g. 'ICD-10'.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'codingSystem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The coding system, e.g. 'ICD-10'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
