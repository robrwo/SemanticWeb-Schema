use utf8;

package SemanticWeb::Schema::isrcCode;

# ABSTRACT: The International Standard Recording Code for the recording.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isrcCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The International Standard Recording Code for the recording.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
