use utf8;

package SemanticWeb::Schema::AudiobookFormat;

# ABSTRACT: Book format: Audiobook

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'AudiobookFormat';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Book format: Audiobook. This is an enumerated value for use with the
bookFormat property. There is also a type 'Audiobook' in the bib extension
which includes Audiobook specific properties.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
