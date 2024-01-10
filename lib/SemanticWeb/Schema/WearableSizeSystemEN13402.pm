use utf8;

package SemanticWeb::Schema::WearableSizeSystemEN13402;

# ABSTRACT: EN 13402 (joint European standard for size labelling of clothes).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableSizeSystemEN13402';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

EN 13402 (joint European standard for size labelling of clothes).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
