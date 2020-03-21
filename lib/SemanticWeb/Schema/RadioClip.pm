use utf8;

package SemanticWeb::Schema::RadioClip;

# ABSTRACT: A short radio program or a segment/part of a radio program.

use Moo;

extends qw/ SemanticWeb::Schema::Clip /;


use MooX::JSON_LD 'RadioClip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A short radio program or a segment/part of a radio program.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Clip>

=cut

1;
