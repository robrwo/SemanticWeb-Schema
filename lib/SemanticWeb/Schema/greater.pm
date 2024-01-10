use utf8;

package SemanticWeb::Schema::greater;

# ABSTRACT: This ordering relation for qualitative values indicates that the subject is greater than the object.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'greater';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This ordering relation for qualitative values indicates that the subject is
greater than the object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
