use utf8;

package SemanticWeb::Schema::greaterOrEqual;

# ABSTRACT: This ordering relation for qualitative values indicates that the subject is greater than or equal to the object.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'greaterOrEqual';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This ordering relation for qualitative values indicates that the subject is
greater than or equal to the object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
