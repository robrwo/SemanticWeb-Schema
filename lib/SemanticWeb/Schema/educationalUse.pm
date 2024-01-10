use utf8;

package SemanticWeb::Schema::educationalUse;

# ABSTRACT: The purpose of a work in the context of education; for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'educationalUse';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The purpose of a work in the context of education; for example,
'assignment', 'group work'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
