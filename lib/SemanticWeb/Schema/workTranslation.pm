use utf8;

package SemanticWeb::Schema::workTranslation;

# ABSTRACT: A work that is a translation of the content of this work

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'workTranslation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A work that is a translation of the content of this work. E.g. 西遊記 has an
English workTranslation “Journey to the West”, a German workTranslation
“Monkeys Pilgerfahrt” and a Vietnamese translation Tây du ký bình khảo.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
