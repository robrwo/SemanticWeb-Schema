use utf8;

package SemanticWeb::Schema::broadcastFrequency;

# ABSTRACT: The frequency used for over-the-air broadcasts

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastFrequency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The frequency used for over-the-air broadcasts. Numeric values or simple
ranges, e.g. 87-99. In addition a shortcut idiom is supported for
frequences of AM and FM radio channels, e.g. "87 FM".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
