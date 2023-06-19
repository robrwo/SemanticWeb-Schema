use utf8;

package SemanticWeb::Schema::TextObject;

# ABSTRACT: A text file

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'TextObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A text file. The text can be unformatted or contain markup, html, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
