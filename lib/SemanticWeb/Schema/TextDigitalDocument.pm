use utf8;

package SemanticWeb::Schema::TextDigitalDocument;

# ABSTRACT: A file composed primarily of text.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::DigitalDocument /;


use MooX::JSON_LD 'TextDigitalDocument';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A file composed primarily of text.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DigitalDocument>

=cut

1;
