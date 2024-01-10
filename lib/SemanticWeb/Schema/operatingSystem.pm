use utf8;

package SemanticWeb::Schema::operatingSystem;

# ABSTRACT: Operating systems supported (Windows 7

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'operatingSystem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Operating systems supported (Windows 7, OS X 10.6, Android 1.6).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
